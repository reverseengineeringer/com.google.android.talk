.class public final Ljyv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19714
    invoke-direct {p0}, Llyb;-><init>()V

    .line 20719
    iput-object v0, p0, Ljyv;->a:Ljava/lang/Boolean;

    .line 20720
    iput-object v0, p0, Ljyv;->b:Ljava/lang/Boolean;

    .line 20721
    iput-object v0, p0, Ljyv;->c:Ljava/lang/Boolean;

    .line 20722
    iput-object v0, p0, Ljyv;->eD:Llyd;

    .line 20723
    const/4 v0, -0x1

    iput v0, p0, Ljyv;->eE:I

    .line 19716
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 23765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23766
    sparse-switch v0, :sswitch_data_0

    .line 23770
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23771
    :sswitch_0
    return-object p0

    .line 23776
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyv;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 23780
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyv;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 23784
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyv;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 23766
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 19730
    iget-object v0, p0, Ljyv;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 19731
    const/4 v0, 0x1

    iget-object v1, p0, Ljyv;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 19733
    :cond_0
    iget-object v0, p0, Ljyv;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 19734
    const/4 v0, 0x2

    iget-object v1, p0, Ljyv;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 19736
    :cond_1
    iget-object v0, p0, Ljyv;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 19737
    const/4 v0, 0x3

    iget-object v1, p0, Ljyv;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 19739
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 19740
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 19744
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 19745
    iget-object v1, p0, Ljyv;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 19746
    const/4 v1, 0x1

    iget-object v2, p0, Ljyv;->a:Ljava/lang/Boolean;

    .line 19747
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 19747
    add-int/2addr v0, v1

    .line 19749
    :cond_0
    iget-object v1, p0, Ljyv;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 19750
    const/4 v1, 0x2

    iget-object v2, p0, Ljyv;->b:Ljava/lang/Boolean;

    .line 19751
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 19751
    add-int/2addr v0, v1

    .line 19753
    :cond_1
    iget-object v1, p0, Ljyv;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 19754
    const/4 v1, 0x3

    iget-object v2, p0, Ljyv;->c:Ljava/lang/Boolean;

    .line 19755
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 19755
    add-int/2addr v0, v1

    .line 19757
    :cond_2
    return v0
.end method
