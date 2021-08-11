.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$WBR057y3e1A5lbkY-xhTKGb4TAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$WBR057y3e1A5lbkY-xhTKGb4TAo;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$WBR057y3e1A5lbkY-xhTKGb4TAo;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$initSecondaryHomeHandleForRotation$3$NavigationBarFragment()V

    return-void
.end method
