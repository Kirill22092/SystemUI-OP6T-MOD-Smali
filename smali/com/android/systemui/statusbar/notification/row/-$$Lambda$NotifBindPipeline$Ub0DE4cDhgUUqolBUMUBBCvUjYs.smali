.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$Ub0DE4cDhgUUqolBUMUBBCvUjYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/BindRequester$BindRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$Ub0DE4cDhgUUqolBUMUBBCvUjYs;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    return-void
.end method


# virtual methods
.method public final onBindRequest(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroidx/core/os/CancellationSignal;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotifBindPipeline$Ub0DE4cDhgUUqolBUMUBBCvUjYs;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->lambda$Ub0DE4cDhgUUqolBUMUBBCvUjYs(Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroidx/core/os/CancellationSignal;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    return-void
.end method
