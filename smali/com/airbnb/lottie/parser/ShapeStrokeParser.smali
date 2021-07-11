.class Lcom/airbnb/lottie/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source "ShapeStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string/jumbo v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "n"

    const-string/jumbo v1, "v"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v10, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 52
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v13

    const/16 v14, 0x64

    if-eqz v13, :cond_b

    .line 53
    sget-object v13, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v13}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v13

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 80
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 85
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 86
    sget-object v1, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, v15, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 91
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 100
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v15, 0x2

    if-eq v1, v14, :cond_5

    const/16 v14, 0x67

    if-eq v1, v14, :cond_4

    const/16 v14, 0x6f

    if-eq v1, v14, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "o"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const-string v1, "g"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v15

    goto :goto_4

    :cond_5
    const-string v1, "d"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, -0x1

    :goto_4
    if-eqz v1, :cond_8

    const/4 v13, 0x1

    if-eq v1, v13, :cond_7

    if-eq v1, v15, :cond_7

    move-object/from16 v1, p1

    goto :goto_5

    :cond_7
    move-object/from16 v1, p1

    .line 106
    invoke-virtual {v1, v13}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    .line 107
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v1, p1

    const/4 v13, 0x1

    move-object v5, v2

    :goto_5
    move v15, v13

    const/16 v14, 0x64

    goto :goto_1

    :cond_9
    move-object/from16 v1, p1

    move v13, v15

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 113
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_a

    const/4 v2, 0x0

    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v11

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v10, v13

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-object v9, v9, v13

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v1, p1

    move v14, v15

    const/4 v2, 0x0

    .line 67
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v13

    sub-int/2addr v13, v14

    aget-object v8, v8, v13

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 64
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 61
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 58
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    if-nez v12, :cond_c

    .line 125
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    move-object v12, v0

    .line 126
    :cond_c
    new-instance v13, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object v0, v13

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v12

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
