.class public final Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;
.super Ljava/lang/Object;
.source "BubbleVolatileRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/pm/LauncherApps;",
            ">;)",
            "Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;-><init>(Landroid/content/pm/LauncherApps;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->launcherAppsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository_Factory;->get()Lcom/android/systemui/bubbles/storage/BubbleVolatileRepository;

    move-result-object p0

    return-object p0
.end method
