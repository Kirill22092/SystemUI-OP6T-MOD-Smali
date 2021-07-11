.class final Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final FAKE_PS_ICON:Landroid/net/Uri;

.field private final SMART_LINK_AGGREGATION:Landroid/net/Uri;

.field private final SMART_LINK_SELECTION:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 2031
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "oneplus_smart_link_selection"

    .line 2022
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->SMART_LINK_SELECTION:Landroid/net/Uri;

    const-string p1, "download_smart_link_aggregation"

    .line 2024
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->SMART_LINK_AGGREGATION:Landroid/net/Uri;

    const-string p1, "oneplus_fake_ps_icon"

    .line 2027
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->FAKE_PS_ICON:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 2035
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2037
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->SMART_LINK_SELECTION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2040
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->SMART_LINK_AGGREGATION:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2043
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->FAKE_PS_ICON:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 2046
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 2056
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method unObserve()V
    .locals 1

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2051
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 1

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->FAKE_PS_ICON:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2062
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    goto :goto_0

    .line 2063
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportShowDualChannel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2064
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
