package uBoat_Domain {
    private import ScalarValues::*;

    // Mühendislik Değer Tipleri
    attribute def Depth :> Real;        // [m]
    attribute def Duration :> Real;     // [s]
    attribute def Voltage :> Real;      // [V]
    attribute def Velocity :> Real;     // [m/s]

    // Operasyonel ve Sağlık Durumları
    enum def MissionPhase {
        enum PreLaunch;
        enum Transit;
        enum AutonomousMission;
        enum EmergencyRecovery;
        enum Surfaced;
    }

    enum def HealthStatus {
        enum Nominal;
        enum Degraded;
        enum CriticalFault;
    }

    // Arayüz Port Tanımları
    port def AcousticNavPort {
        out attribute posX : Real;
        out attribute posY : Real;
        out attribute depth : Depth;
        out attribute fixValid : Boolean;
    }

    port def TelemetryPort {
        out attribute aliveCounter : Integer;
        out attribute phase : MissionPhase;
        out attribute status : HealthStatus;
    }

    port def ActuatorCmdPort {
        in attribute surgeCmd : Velocity;
        in attribute targetDepth : Depth;
        in attribute dropBallast : Boolean;
    }

    port def PowerPort {
        out attribute busVoltage : Voltage;
        out attribute emergencyCutoff : Boolean;
    }
}