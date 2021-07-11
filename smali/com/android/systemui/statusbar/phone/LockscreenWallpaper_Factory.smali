.class public final Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;
.super Ljava/lang/Object;
.source "LockscreenWallpaper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;"
        }
    .end annotation
.end field

.field private final iWallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final wallpaperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->iWallpaperManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->mediaManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;"
        }
    .end annotation

    .line 78
    new-instance v7, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/WallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IWallpaperManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;"
        }
    .end annotation

    .line 62
    new-instance v7, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    .line 63
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/WallpaperManager;

    .line 64
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/IWallpaperManager;

    .line 65
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 66
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/dump/DumpManager;

    .line 67
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 68
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/os/Handler;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;-><init>(Landroid/app/WallpaperManager;Landroid/app/IWallpaperManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/os/Handler;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->wallpaperManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->iWallpaperManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->mediaManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper_Factory;->get()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    move-result-object p0

    return-object p0
.end method
