.class public final Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;
.super Ljava/lang/Object;
.source "ForegroundServiceLifetimeExtender_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ForegroundServiceLifetimeExtender;",
        ">;"
    }
.end annotation


# instance fields
.field private final interactionTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final systemClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
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
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->interactionTrackerProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->systemClockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;)",
            "Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceLifetimeExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationInteractionTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/time/SystemClock;",
            ">;)",
            "Lcom/android/systemui/ForegroundServiceLifetimeExtender;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/ForegroundServiceLifetimeExtender;

    .line 34
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationInteractionTracker;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/time/SystemClock;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ForegroundServiceLifetimeExtender;-><init>(Lcom/android/systemui/statusbar/NotificationInteractionTracker;Lcom/android/systemui/util/time/SystemClock;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/ForegroundServiceLifetimeExtender;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->interactionTrackerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceLifetimeExtender;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServiceLifetimeExtender_Factory;->get()Lcom/android/systemui/ForegroundServiceLifetimeExtender;

    move-result-object p0

    return-object p0
.end method
