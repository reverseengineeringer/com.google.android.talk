.class public final Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-direct {p0}, Llyb;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    .line 614
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->b:F

    .line 615
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->c:F

    .line 616
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->d:F

    .line 617
    iput v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->e:F

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->eD:Llyd;

    .line 619
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->eE:I

    .line 620
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4667
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4668
    sparse-switch v0, :sswitch_data_0

    .line 4672
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4673
    :sswitch_0
    return-object p0

    .line 4678
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->b:F

    .line 4679
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    goto :goto_0

    .line 4683
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->c:F

    .line 4684
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    goto :goto_0

    .line 4688
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->d:F

    .line 4689
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    goto :goto_0

    .line 4693
    :sswitch_4
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->e:F

    .line 4694
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    goto :goto_0

    .line 4668
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->b:F

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 628
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 629
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->c:F

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 631
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 632
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->d:F

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 634
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 635
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->e:F

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 637
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 638
    return-void
.end method

.method protected b()I
    .locals 2

    .prologue
    .line 642
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 643
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 644
    const/4 v1, 0x1

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 645
    add-int/2addr v0, v1

    .line 647
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 648
    const/4 v1, 0x2

    .line 2569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 649
    add-int/2addr v0, v1

    .line 651
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 652
    const/4 v1, 0x3

    .line 3569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 653
    add-int/2addr v0, v1

    .line 655
    :cond_2
    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/api/nano/AttributesProto$Radius;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 656
    const/4 v1, 0x4

    .line 4569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 657
    add-int/2addr v0, v1

    .line 659
    :cond_3
    return v0
.end method
