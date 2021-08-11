.class final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$reinflateViews$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->access$onClearGentleNotifsClick(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V

    return-void
.end method
