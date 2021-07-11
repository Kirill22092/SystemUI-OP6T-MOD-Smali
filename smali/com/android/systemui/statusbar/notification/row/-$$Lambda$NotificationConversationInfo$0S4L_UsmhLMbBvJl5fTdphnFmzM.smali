.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$0S4L_UsmhLMbBvJl5fTdphnFmzM;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$updateToggleActions$6$NotificationConversationInfo(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
