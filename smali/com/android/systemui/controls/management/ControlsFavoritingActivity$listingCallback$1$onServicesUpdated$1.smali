.class final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "ControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;->onServicesUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$listingCallback$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getOtherAppsButton$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
