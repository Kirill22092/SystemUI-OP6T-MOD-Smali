.class public final synthetic Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$EMJ3LU0vgSjo3IF642krw44r6k4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$EMJ3LU0vgSjo3IF642krw44r6k4;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/-$$Lambda$OpSliceManager$EMJ3LU0vgSjo3IF642krw44r6k4;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/oneplus/aod/slice/OpSlice;

    invoke-static {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->lambda$dump$4(Ljava/io/PrintWriter;Lcom/oneplus/aod/slice/OpSlice;)V

    return-void
.end method
