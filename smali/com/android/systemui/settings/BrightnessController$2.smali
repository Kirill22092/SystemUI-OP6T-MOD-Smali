.class Lcom/android/systemui/settings/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1500(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "screen_brightness_for_vr_float"

    goto :goto_0

    :cond_0
    const-string v0, "screen_brightness_float"

    .line 330
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/systemui/settings/BrightnessController;->access$702(J)J

    .line 332
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$000(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 333
    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$2300(Lcom/android/systemui/settings/BrightnessController;)F

    move-result p0

    const/4 v2, -0x2

    .line 332
    invoke-static {v1, v0, p0, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$BrightnessController$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController$2;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1200(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1202(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 303
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1300(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrManager;

    move-result-object v0

    const-string v2, "StatusBar.BrightnessController"

    if-eqz v0, :cond_1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1300(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$1400(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Failed to unregister VR mode state listener: "

    .line 307
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1800(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    invoke-static {}, Lcom/android/systemui/settings/BrightnessController;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStopListeningRunnable mTracking: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$2000(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAutomatic: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 317
    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$2100(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mNewController: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 318
    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$2200(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBrightness: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 319
    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->access$2300(Lcom/android/systemui/settings/BrightnessController;)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$2000(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    new-instance v0, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$2$R7xwW4ZTyw9CTX8R56AsACHdwQs;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$2$R7xwW4ZTyw9CTX8R56AsACHdwQs;-><init>(Lcom/android/systemui/settings/BrightnessController$2;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 335
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$2002(Lcom/android/systemui/settings/BrightnessController;Z)Z

    :cond_3
    return-void
.end method
