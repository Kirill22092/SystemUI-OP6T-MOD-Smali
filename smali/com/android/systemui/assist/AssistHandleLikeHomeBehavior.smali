.class final Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;
.super Ljava/lang/Object;
.source "AssistHandleLikeHomeBehavior.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;


# instance fields
.field private mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

.field private mIsAwake:Z

.field private mIsDozing:Z

.field private mIsHomeHandleHiding:Z

.field private final mStatusBarStateController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mSysUiFlagContainer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private final mWakefulnessLifecycle:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/model/SysUiState;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$1;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 50
    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior$2;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 73
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleLikeHomeBehavior$vrkd-H0qzooln_t3TWfQihWw8WM;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleLikeHomeBehavior$vrkd-H0qzooln_t3TWfQihWw8WM;-><init>(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    .line 93
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleDozingChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method private callbackForCurrentState()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->isFullyAwake()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->showAndStay()V

    goto :goto_1

    .line 154
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleCallbacks;->hide()V

    :goto_1
    return-void
.end method

.method private handleDozingChanged(Z)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private handleSystemUiStateChange(I)V
    .locals 1

    .line 139
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->isHomeHandleHiding(I)Z

    move-result p1

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private handleWakefullnessChanged(Z)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method private isFullyAwake()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHomeHandleHiding(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$vrkd-H0qzooln_t3TWfQihWw8WM(Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->handleSystemUiStateChange(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current AssistHandleLikeHomeBehavior State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   mIsAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   mIsHomeHandleHiding="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsHomeHandleHiding:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V
    .locals 0

    .line 98
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 99
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsDozing:Z

    .line 100
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mIsAwake:Z

    .line 103
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/model/SysUiState;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {p1, p2}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->callbackForCurrentState()V

    return-void
.end method

.method public onModeDeactivated()V
    .locals 2

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mAssistHandleCallbacks:Lcom/android/systemui/assist/AssistHandleCallbacks;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycle:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mWakefulnessLifecycleObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiFlagContainer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/model/SysUiState;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->removeCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    return-void
.end method
