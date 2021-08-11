.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PartialConversationInfo$OYcvrnC5h5eirxa5ANc3qGWEO2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PartialConversationInfo$OYcvrnC5h5eirxa5ANc3qGWEO2w;->f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PartialConversationInfo$OYcvrnC5h5eirxa5ANc3qGWEO2w;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PartialConversationInfo$OYcvrnC5h5eirxa5ANc3qGWEO2w;->f$0:Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$PartialConversationInfo$OYcvrnC5h5eirxa5ANc3qGWEO2w;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/PartialConversationInfo;->lambda$getSettingsOnClickListener$1$PartialConversationInfo(ILandroid/view/View;)V

    return-void
.end method
