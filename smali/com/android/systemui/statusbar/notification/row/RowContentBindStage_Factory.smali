.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;
.super Ljava/lang/Object;
.source "RowContentBindStage_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
        ">;"
    }
.end annotation


# instance fields
.field private final binderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final errorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;",
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
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->binderProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/row/RowContentBindStageLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->binderProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->errorManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage_Factory;->get()Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    move-result-object p0

    return-object p0
.end method
