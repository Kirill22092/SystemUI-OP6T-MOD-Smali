.class public final Lcom/android/systemui/statusbar/FeatureFlags_Factory;
.super Ljava/lang/Object;
.source "FeatureFlags_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/FeatureFlags;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/statusbar/FeatureFlags_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/android/systemui/statusbar/FeatureFlags;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/FeatureFlags;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/FeatureFlags;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->get()Lcom/android/systemui/statusbar/FeatureFlags;

    move-result-object p0

    return-object p0
.end method
