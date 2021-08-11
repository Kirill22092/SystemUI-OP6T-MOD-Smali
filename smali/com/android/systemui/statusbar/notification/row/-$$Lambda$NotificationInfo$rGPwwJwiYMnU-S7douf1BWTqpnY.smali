.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$rGPwwJwiYMnU-S7douf1BWTqpnY;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$applyAlertingBehavior$8$NotificationInfo(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
