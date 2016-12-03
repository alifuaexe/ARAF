using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading;

namespace ARAF_COUNTER_SERVICE
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {
#if DEBUG
            ARAF_COUNTER_SERVICE myService = new ARAF_COUNTER_SERVICE();
            //   call the start method -this will start the Timer.
            myService.Start();
            //   Set the Thread to sleep
            Thread.Sleep(60000);
            //    Call the Stop method-this will stop the Timer.
            myService.Stop();
#else
            The following is the default code - You may fine tune
            the code to create one instance of the service on the top
            and use the instance variable in both debug and release mode
           
#endif
            ServiceBase[] ServicesToRun;
            ServicesToRun = new ServiceBase[] 
            { 
                new ARAF_COUNTER_SERVICE() 
            };
            ServiceBase.Run(ServicesToRun);
        }
    }
}
