.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationConversationInfo$jd7IzkV9FIzPNu4O1qyUjmumXQA;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationConversationInfo;->lambda$getSettingsOnClickListener$4$NotificationConversationInfo(ILandroid/view/View;)V

    return-void
.end method
