.class public final Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;
.super Ljava/lang/Object;
.source "BubbleDataRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/bubbles/BubbleDataRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final launcherAppsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;"
        }
    .end annotation
.end field

.field private final persistentRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final volatileRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->volatileRepositoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->persistentRepositoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleDataRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/BubbleDataRepository;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bubbles/BubbleDataRepository;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleDataRepository;-><init>(Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;Lcom/android/systemui/bubbles/storage/BubblePersistentRepository;Landroid/content/pm/LauncherApps;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bubbles/BubbleDataRepository;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->volatileRepositoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->persistentRepositoryProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleDataRepository_Factory;->get()Lcom/android/systemui/bubbles/BubbleDataRepository;

    move-result-object p0

    return-object p0
.end method
