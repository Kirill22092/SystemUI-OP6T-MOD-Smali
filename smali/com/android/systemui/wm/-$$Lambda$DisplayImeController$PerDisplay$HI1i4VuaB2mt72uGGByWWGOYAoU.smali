.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$HI1i4VuaB2mt72uGGByWWGOYAoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$HI1i4VuaB2mt72uGGByWWGOYAoU;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$HI1i4VuaB2mt72uGGByWWGOYAoU;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay;

    invoke-virtual {p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay;->lambda$hideInsets$3$DisplayImeController$PerDisplay()V

    return-void
.end method
