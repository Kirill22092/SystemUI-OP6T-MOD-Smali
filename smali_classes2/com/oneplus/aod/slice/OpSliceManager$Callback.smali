.class public Lcom/oneplus/aod/slice/OpSliceManager$Callback;
.super Ljava/lang/Object;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    return-void
.end method


# virtual methods
.method public updateUI()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$000(Lcom/oneplus/aod/slice/OpSliceManager;Z)V

    return-void
.end method
