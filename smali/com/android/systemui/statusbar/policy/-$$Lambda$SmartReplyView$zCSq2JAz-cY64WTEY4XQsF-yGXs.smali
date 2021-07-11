.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field public final synthetic f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$zCSq2JAz-cY64WTEY4XQsF-yGXs;->f$2:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateReplyButton$2(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V

    return-void
.end method
