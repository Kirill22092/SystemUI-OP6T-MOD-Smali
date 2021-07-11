.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Pinp5dDEZz4g_gFarHF_EBKOZzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Pinp5dDEZz4g_gFarHF_EBKOZzg;->f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Pinp5dDEZz4g_gFarHF_EBKOZzg;->f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->lambda$Pinp5dDEZz4g_gFarHF_EBKOZzg(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
