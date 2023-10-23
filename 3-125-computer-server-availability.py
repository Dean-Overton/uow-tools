import threading
import subprocess
import platform


availabilty = {}


class OracleServerAvailability:
    # List of Oracle servers located at data-pc.. systems in 3.125.
    computers = ["data-pc01.adeis.uow.edu.au",
                 "data-pc02.adeis.uow.edu.au",
                 "data-pc03.adeis.uow.edu.au",
                 "data-pc04.adeis.uow.edu.au",
                 "data-pc05.adeis.uow.edu.au",
                 "data-pc06.adeis.uow.edu.au",
                 "data-pc07.adeis.uow.edu.au",
                 "data-pc08.adeis.uow.edu.au",
                 "data-pc09.adeis.uow.edu.au",
                 "data-pc10.adeis.uow.edu.au",
                 "data-pc11.adeis.uow.edu.au",
                 "data-pc12.adeis.uow.edu.au",
                 "data-pc13.adeis.uow.edu.au",
                 "data-pc14.adeis.uow.edu.au",
                 "data-pc15.adeis.uow.edu.au",
                 "data-pc16.adeis.uow.edu.au",
                 "data-pc17.adeis.uow.edu.au",
                 "data-pc18.adeis.uow.edu.au",
                 "data-pc19.adeis.uow.edu.au",
                 "data-pc20.adeis.uow.edu.au",
                 "data-pc21.adeis.uow.edu.au",
                 "data-pc22.adeis.uow.edu.au",
                 "data-pc23.adeis.uow.edu.au",
                 "data-pc24.adeis.uow.edu.au",
                 "data-pc25.adeis.uow.edu.au",
                 "data-pc26.adeis.uow.edu.au",
                 "data-pc27.adeis.uow.edu.au",
                 "data-pc28.adeis.uow.edu.au",
                 "data-pc29.adeis.uow.edu.au"]

    def _ping_computer(self, computer):
        """Ping a computer and print if it is online or offline"""
        if platform.system() == "Windows":
            # Windows ping command
            ping = ["ping", "-n", "2", computer]
        elif platform.system() == "Linux":
            # Linux ping command
            ping = ["ping", "-c", "2", computer]
        else:
            raise Exception("Unknown operating system")

        if subprocess.call(ping,
                           stdout=subprocess.DEVNULL,
                           stderr=subprocess.DEVNULL) == 0:
            availabilty[computer] = True
            print(f"{computer} is online")
        else:
            availabilty[computer] = False
            print(f"{computer} is offline")

    def _check_vpn(self):
        print("Checking VPN connection...")
        ping = ["ping", "-n", "2", "10.1.1.241"]
        if subprocess.call(ping,
                           stdout=subprocess.DEVNULL,
                           stderr=subprocess.DEVNULL) == 0:
            return True
        else:
            raise Exception("Not connected to UOW VPN!")

    def get_availability(self):
        """Get the availability of all computers"""
        # Create a thread for each computer ping and start it
        if not self._check_vpn():
            return

        threads = []
        for computer in self.computers:
            thread = threading.Thread(target=self._ping_computer,
                                      args=(computer,))
            threads.append(thread)
            thread.start()

        for thread in threads:
            thread.join()


if __name__ == "__main__":
    OracleServerAvailability().get_availability()
