.class Lcom/android/systemui/qs/tiles/UiModeNightTile$1;
.super Lcom/oneplus/util/SystemSetting;
.source "UiModeNightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UiModeNightTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/util/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$000(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleValueChanged:special_theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$1;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
