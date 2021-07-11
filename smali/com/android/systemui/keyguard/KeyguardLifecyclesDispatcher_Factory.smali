.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;
.super Ljava/lang/Object;
.source "KeyguardLifecyclesDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->get()Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    return-object p0
.end method
