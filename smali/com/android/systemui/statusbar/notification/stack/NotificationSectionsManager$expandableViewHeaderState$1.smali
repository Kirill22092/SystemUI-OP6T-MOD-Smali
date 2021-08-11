.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private currentPosition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetPosition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustViewPosition()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->getCurrentPosition()Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->access$getParent$p(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->access$getParent$p(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->access$getParent$p(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->$header:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentPosition()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->currentPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTargetPosition()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->targetPosition:Ljava/lang/Integer;

    return-object p0
.end method

.method public setCurrentPosition(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->currentPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setTargetPosition(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;->targetPosition:Ljava/lang/Integer;

    return-void
.end method
