.class final Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OpAodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;Landroid/os/Handler;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 825
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3

    .line 830
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    const-string p1, "aod_clock_style"

    .line 831
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 833
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/oneplus/aod/OpAodUtils;->checkAodStyle(Landroid/content/Context;I)V

    .line 835
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$500(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB(Z)V

    .line 837
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 841
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 843
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_2

    .line 845
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1000(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/bg/OpAodCanvas;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->disable()V

    goto :goto_0

    :cond_0
    const-string p1, "aod_display_text"

    .line 847
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 848
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$700(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    goto :goto_0

    :cond_1
    const-string p1, "op_custom_horizon_light_animation_style"

    .line 849
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 850
    iget-object p2, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$1800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodLightEffectContainer;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$800(Lcom/oneplus/aod/OpAodDisplayViewManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setLightIndex(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onChange(ZLjava/util/Collection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 858
    invoke-virtual {p0, p1, p2, p4}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    return-void
.end method
