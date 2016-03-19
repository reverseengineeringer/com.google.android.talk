.class public abstract Lhg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lhk;


# direct methods
.method public constructor <init>(Lhk;)V
    .locals 0

    .prologue
    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2115
    iput-object p1, p0, Lhg;->a:Lhk;

    .line 2116
    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public a(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    if-gez v0, :cond_1

    .line 1131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1133
    :cond_1
    iget-object v0, p0, Lhg;->a:Lhk;

    if-nez v0, :cond_2

    .line 1134
    invoke-virtual {p0}, Lhg;->a()Z

    move-result v0

    .line 1136
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lhg;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/CharSequence;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2140
    iget-object v1, p0, Lhg;->a:Lhk;

    invoke-interface {v1, p1, v0, p3}, Lhk;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2146
    invoke-virtual {p0}, Lhg;->a()Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 2142
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
