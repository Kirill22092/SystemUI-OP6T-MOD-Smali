.class public final Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;
.super Ljava/lang/Object;
.source "LowPriorityInflationHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final groupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private final rowContentBindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
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
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->rowContentBindStageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    .line 40
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;-><init>(Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->groupManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->rowContentBindStageProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper_Factory;->get()Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    move-result-object p0

    return-object p0
.end method
