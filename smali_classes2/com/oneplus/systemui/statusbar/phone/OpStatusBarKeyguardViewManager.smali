.class public Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "OpStatusBarKeyguardViewManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 2

    .line 61
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const-string v1, "mBouncer"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-object p0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 44
    new-instance p0, Lcom/oneplus/onlineconfig/OpFingerprintConfig;

    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpFingerprintConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardBouncer;->showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;I)V

    :cond_0
    return-void
.end method
