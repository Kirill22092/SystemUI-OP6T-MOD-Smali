.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field carrierNetworkChangeMode:Z

.field dataConnected:Z

.field dataSim:Z

.field defaultDataOff:Z

.field fakePSIcon:Z

.field imsRegistered:Z

.field isDefault:Z

.field isDefaultDataSubId:Z

.field isDemoMode:Z

.field isEmergency:Z

.field isVirtual:Z

.field isWifiConnected:Z

.field mobileDataEnabled:Z

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field roaming:Z

.field roamingDataEnabled:Z

.field simstate:Ljava/lang/String;

.field smartlinkEnable:Z

.field userSetup:Z

.field videoCapable:Z

.field voiceCapable:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .locals 1

    .line 2404
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 2405
    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 2406
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 2407
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 2408
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 2409
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 2410
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 2411
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 2412
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 2413
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 2414
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 2415
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 2416
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    .line 2417
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 2418
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 2419
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 2420
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    .line 2421
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    .line 2425
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    .line 2428
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    .line 2431
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    .line 2434
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    .line 2437
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    .line 2440
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    .line 2443
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 2497
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 2498
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 2499
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 2450
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    .line 2451
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataSim="

    .line 2452
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkName="

    .line 2453
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkNameData="

    .line 2454
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataConnected="

    .line 2455
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "roaming="

    .line 2456
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefault="

    .line 2457
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isEmergency="

    .line 2458
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "airplaneMode="

    .line 2459
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "carrierNetworkChangeMode="

    .line 2460
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2461
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userSetup="

    .line 2462
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "defaultDataOff="

    .line 2463
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "imsRegistered="

    .line 2464
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "voiceCapable="

    .line 2465
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoCapable="

    .line 2466
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mobileDataEnabled="

    .line 2467
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->mobileDataEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "roamingDataEnabled="

    .line 2468
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roamingDataEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "simstate="

    .line 2472
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->simstate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefaultDataSubId="

    .line 2475
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefaultDataSubId:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "isVirtual"

    .line 2478
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isVirtual:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isDemoMode"

    .line 2481
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "isWifiConnected"

    .line 2484
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isWifiConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "smartlinkEnable"

    .line 2487
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->smartlinkEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "fakePSIcon"

    .line 2490
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->fakePSIcon:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method
