# uBoat — Autonomous Underwater Vehicle (MBSE & V-Model Showcase)

> **Live Requirements & Traceability Matrix:**  
> **[Click here to explore the interactive StrictDoc Web Interface](https://<kullanici-adin>.github.io/uBoat-MBSE-Showcase/html/)**

This repository demonstrates a Systems Engineering workflow for an Autonomous Underwater Vehicle (**uBoat**), linking stakeholder needs to textual **SysML v2** architecture models and **ROS 2** software specifications.

---

## Systems Engineering V-Model Flow

```mermaid
flowchart LR
    subgraph Left["V-Model Left: Definition & Architecture"]
        STK["01. Stakeholder Needs<br/>(StrictDoc: STK-xxx)"]
        SYS["02. System Requirements<br/>(StrictDoc: SYS-xxx)"]
        ARCH["03. 6-Layer SysML v2<br/>(Domain → Technical)"]
        SUB["04. Subsystem & ICD<br/>(StrictDoc: SUB-xxx)"]
    end

    subgraph Bottom["Implementation"]
        ROS["ROS 2 Jazzy & AI Pilot<br/>(Ubuntu 24.04 / RPi 5)"]
    end

    subgraph Right["V-Model Right: Verification"]
        TST["05. System Verification<br/>(StrictDoc: TST-xxx / Gazebo)"]
    end

    STK --> SYS --> ARCH --> SUB --> ROS --> TST
    STK -. "Verified By" .- TST
    SYS -. "Verified By" .- TST
