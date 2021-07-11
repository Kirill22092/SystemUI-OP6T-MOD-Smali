.class final Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPReverseChargeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPReverseChargeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Landroid/os/Handler;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    .line 269
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$600(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "low_power"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "temp_over_heat"

    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 294
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$700(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable_reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", low_batt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    .line 295
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$800(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", overheat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    .line 296
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$900(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$802(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z

    .line 298
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {p0, v2}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$902(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->refresh()V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public register()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$400(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reverse_wireless_disable_reason"

    .line 274
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->refresh()V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$500(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
