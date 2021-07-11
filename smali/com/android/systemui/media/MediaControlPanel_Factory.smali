.class public final Lcom/android/systemui/media/MediaControlPanel_Factory;
.super Ljava/lang/Object;
.source "MediaControlPanel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaControlPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final seekBarViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaViewControllerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;)",
            "Lcom/android/systemui/media/MediaControlPanel_Factory;"
        }
    .end annotation

    .line 67
    new-instance v6, Lcom/android/systemui/media/MediaControlPanel_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaControlPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;)",
            "Lcom/android/systemui/media/MediaControlPanel;"
        }
    .end annotation

    .line 53
    new-instance v6, Lcom/android/systemui/media/MediaControlPanel;

    .line 54
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 55
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 56
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    .line 57
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/media/MediaViewController;

    .line 58
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/media/SeekBarViewModel;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaControlPanel;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaViewControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/media/MediaControlPanel_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel_Factory;->get()Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p0

    return-object p0
.end method
