.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

.field public final synthetic f$1:Landroid/app/RemoteAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/app/RemoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;->f$1:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;->f$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$Ts5um0YR6IQ0YRdLS2dyHj4GSpg;->f$1:Landroid/app/RemoteAction;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->lambda$updateActionViews$6$PipMenuActivity(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method
