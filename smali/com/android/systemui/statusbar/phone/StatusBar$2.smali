.class Lcom/android/systemui/statusbar/phone/StatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 588
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "StatusBar"

    const-string p1, "WallpaperManager not supported"

    .line 590
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_0
    const-class p2, Landroid/app/WallpaperManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    const/4 p2, -0x2

    .line 594
    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p1

    .line 595
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110061

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 599
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 601
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setWallpaperSupportsAmbientMode(Z)V

    .line 602
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWallpaperSupportsAmbientMode(Z)V

    return-void
.end method
