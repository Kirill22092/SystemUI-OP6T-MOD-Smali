.class public final Lcom/android/systemui/dagger/ContextComponentResolver_Factory;
.super Ljava/lang/Object;
.source "ContextComponentResolver_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dagger/ContextComponentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityCreatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final broadcastReceiverCreatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final recentsCreatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final serviceCreatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final systemUICreatorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;"
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
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->activityCreatorsProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->serviceCreatorsProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->systemUICreatorsProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->recentsCreatorsProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->broadcastReceiverCreatorsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;)",
            "Lcom/android/systemui/dagger/ContextComponentResolver_Factory;"
        }
    .end annotation

    .line 71
    new-instance v6, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Service;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUI;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/RecentsImplementation;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;>;)",
            "Lcom/android/systemui/dagger/ContextComponentResolver;"
        }
    .end annotation

    .line 57
    new-instance v6, Lcom/android/systemui/dagger/ContextComponentResolver;

    .line 58
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    .line 59
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    .line 60
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    .line 61
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/util/Map;

    .line 62
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/Map;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dagger/ContextComponentResolver;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/dagger/ContextComponentResolver;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->activityCreatorsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->serviceCreatorsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->systemUICreatorsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->recentsCreatorsProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->broadcastReceiverCreatorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/ContextComponentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/dagger/ContextComponentResolver_Factory;->get()Lcom/android/systemui/dagger/ContextComponentResolver;

    move-result-object p0

    return-object p0
.end method
