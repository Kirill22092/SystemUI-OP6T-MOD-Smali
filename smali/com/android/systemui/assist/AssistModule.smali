.class public abstract Lcom/android/systemui/assist/AssistModule;
.super Ljava/lang/Object;
.source "AssistModule.java"


# direct methods
.method static provideAssistHandleBehaviorControllerMap(Lcom/android/systemui/assist/AssistHandleOffBehavior;Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/assist/AssistHandleOffBehavior;",
            "Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;",
            "Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 65
    sget-object v1, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p0, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object p0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static provideAssistHandleViewController(Lcom/android/systemui/statusbar/NavigationBarController;)Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NavigationBarController;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    return-object p0
.end method

.method static provideAssistUtils(Landroid/content/Context;)Lcom/android/internal/app/AssistUtils;
    .locals 1

    .line 81
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static provideBackgroundHandler()Landroid/os/Handler;
    .locals 2

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AssistHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static provideSystemClock()Landroidx/slice/Clock;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;->INSTANCE:Lcom/android/systemui/assist/-$$Lambda$WyKlJnsW9STKD48w13qf39m-FKI;

    return-object v0
.end method
