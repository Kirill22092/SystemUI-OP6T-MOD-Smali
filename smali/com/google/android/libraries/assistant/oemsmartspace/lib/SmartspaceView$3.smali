.class Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$card:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$3;->val$card:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$3;->val$card:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->performCardAction(Landroid/view/View;)V

    return-void
.end method
