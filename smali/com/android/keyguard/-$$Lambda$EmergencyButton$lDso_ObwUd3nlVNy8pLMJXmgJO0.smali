.class public final synthetic Lcom/android/keyguard/-$$Lambda$EmergencyButton$lDso_ObwUd3nlVNy8pLMJXmgJO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$EmergencyButton$lDso_ObwUd3nlVNy8pLMJXmgJO0;->f$0:Lcom/android/keyguard/EmergencyButton;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$EmergencyButton$lDso_ObwUd3nlVNy8pLMJXmgJO0;->f$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/EmergencyButton;->lambda$onFinishInflate$1$EmergencyButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
