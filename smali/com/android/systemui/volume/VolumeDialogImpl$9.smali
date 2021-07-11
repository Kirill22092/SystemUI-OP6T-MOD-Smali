.class Lcom/android/systemui/volume/VolumeDialogImpl$9;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 2329
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 2413
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4102(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 2414
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 2415
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4100(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    iget v1, p1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    if-ne v0, v1, :cond_1

    .line 2416
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    .line 2418
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$1900(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    :goto_1
    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    .line 2427
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4202(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 2428
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4302(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 2429
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 2430
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptionComponentStateChanged, mIsCaptionComponentEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fromTooltip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .line 2367
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2700(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 2370
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2800(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2900(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3000(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3100(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 2376
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vol onConfigurationChanged, mOpBeforeExpandWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3200(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOpafterExpandWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3300(Lcom/android/systemui/volume/VolumeDialogImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    .line 2381
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2100(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3500(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2386
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3602(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    .line 2388
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3702(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    .line 2346
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    .line 2361
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 2351
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 2

    .line 2337
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$2500(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2339
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuntimeException, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    .line 2408
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4000(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 2

    .line 2401
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 1

    .line 2394
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    .line 2356
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method
