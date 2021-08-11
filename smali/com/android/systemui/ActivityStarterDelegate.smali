.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    return-void
.end method

.method static synthetic lambda$dismissKeyguardThenExecute$10(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic lambda$postQSRunnableDismissingKeyguard$9(Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$postStartActivityDismissingKeyguard$7(Landroid/content/Intent;ILdagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic lambda$postStartActivityDismissingKeyguard$8(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$startActivity$3(Landroid/content/Intent;ZZILdagger/Lazy;)V
    .locals 0

    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method static synthetic lambda$startActivity$4(Landroid/content/Intent;ZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic lambda$startActivity$5(Landroid/content/Intent;ZZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method static synthetic lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method static synthetic lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EdR7EnJaQsucB6gVTu3f0VVIJG0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EdR7EnJaQsucB6gVTu3f0VVIJG0;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$nAMiUKIuJCQJlUCym9gIzdU3mxI;

    invoke-direct {v0, p1}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$nAMiUKIuJCQJlUCym9gIzdU3mxI;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ntMGdPXHlgGHJa34MKvZ31nUwKY;

    invoke-direct {v0, p1}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ntMGdPXHlgGHJa34MKvZ31nUwKY;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$Bkt5K0j7l11YRIlpia_xFvXNPbk;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$EQWsLMWn8q7rwvIKj7BUOEWOer0;-><init>(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$oudv1wNK3Nlq7Lmdo4di21Zs8MY;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$oudv1wNK3Nlq7Lmdo4di21Zs8MY;-><init>(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$6Sj7OMH4lNAnb8MJLTpMcmyzi58;-><init>(Landroid/content/Intent;ZZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ILGza7s66HZ0nctdJ0wnDebSRW8;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ILGza7s66HZ0nctdJ0wnDebSRW8;-><init>(Landroid/content/Intent;ZZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ADi9yiVtZ_7ObMe5Z0tk1YjrdVA;

    invoke-direct {v0, p1}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$ADi9yiVtZ_7ObMe5Z0tk1YjrdVA;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$INm749Eqo5FOmTBr8joulwrrt64;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$wcup9XfV8BD-xZsAFv2kWIfmGN0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$ActivityStarterDelegate$wcup9XfV8BD-xZsAFv2kWIfmGN0;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
