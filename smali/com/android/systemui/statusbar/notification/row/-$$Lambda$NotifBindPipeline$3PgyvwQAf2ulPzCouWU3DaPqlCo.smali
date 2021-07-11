.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$3PgyvwQAf2ulPzCouWU3DaPqlCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/BindStage$StageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$3PgyvwQAf2ulPzCouWU3DaPqlCo;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    return-void
.end method


# virtual methods
.method public final onStageFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$3PgyvwQAf2ulPzCouWU3DaPqlCo;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->lambda$startPipeline$1$NotifBindPipeline(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
