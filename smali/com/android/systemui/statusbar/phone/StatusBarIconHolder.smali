.class public Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.super Ljava/lang/Object;
.source "StatusBarIconHolder.java"


# instance fields
.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mResourceId:I

.field private mTag:I

.field private mType:I

.field private mVisible:Z

.field private mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return-void
.end method

.method public static fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 51
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object v0
.end method

.method public static fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 73
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    const/4 v1, 0x2

    .line 74
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 75
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return-object v0
.end method

.method public static fromOPCustView(IZ)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    const/4 v1, 0x3

    .line 82
    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    .line 83
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mResourceId:I

    .line 84
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return-object v0
.end method

.method public static fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>()V

    .line 66
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 p0, 0x1

    .line 67
    iput p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return-object v0
.end method


# virtual methods
.method public getIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mResourceId:I

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    return p0
.end method

.method public getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-object p0
.end method

.method public isVisible()Z
    .locals 3

    .line 123
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 132
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    return p0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return p0

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    return p0

    .line 125
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    return p0
.end method

.method public setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mVisible:Z

    goto :goto_0

    .line 153
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mMobileState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    goto :goto_0

    .line 149
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    goto :goto_0

    .line 145
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    :goto_0
    return-void
.end method

.method public setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mWifiState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
