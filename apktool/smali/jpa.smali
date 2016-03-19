.class public final Ljpa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpa;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Ljava/lang/Object;",
            "Ljpa;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[Ljpa;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljmo;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-class v0, Ljpa;

    const-wide/32 v2, 0x9776e0a

    .line 14
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Ljpa;->a:Llyc;

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljpa;

    sput-object v0, Ljpa;->f:[Ljpa;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Llyb;-><init>()V

    .line 68
    iput v1, p0, Ljpa;->b:I

    .line 69
    iput-object v0, p0, Ljpa;->c:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Ljpa;->d:Ljmo;

    .line 71
    iput v1, p0, Ljpa;->e:I

    .line 72
    iput-object v0, p0, Ljpa;->eD:Llyd;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Ljpa;->eE:I

    .line 74
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1121
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1122
    sparse-switch v0, :sswitch_data_0

    .line 1126
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    :sswitch_0
    return-object p0

    .line 1132
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1133
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1159
    :pswitch_1
    iput v0, p0, Ljpa;->b:I

    goto :goto_0

    .line 1165
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpa;->c:Ljava/lang/String;

    goto :goto_0

    .line 1169
    :sswitch_3
    iget-object v0, p0, Ljpa;->d:Ljmo;

    if-nez v0, :cond_1

    .line 1170
    new-instance v0, Ljmo;

    invoke-direct {v0}, Ljmo;-><init>()V

    iput-object v0, p0, Ljpa;->d:Ljmo;

    .line 1172
    :cond_1
    iget-object v0, p0, Ljpa;->d:Ljmo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1176
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1177
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 1203
    :pswitch_3
    iput v0, p0, Ljpa;->e:I

    goto :goto_0

    .line 1122
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 79
    iget v0, p0, Ljpa;->b:I

    if-eq v0, v2, :cond_0

    .line 80
    const/4 v0, 0x1

    iget v1, p0, Ljpa;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 82
    :cond_0
    iget-object v0, p0, Ljpa;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x2

    iget-object v1, p0, Ljpa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Ljpa;->d:Ljmo;

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x3

    iget-object v1, p0, Ljpa;->d:Ljmo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_2
    iget v0, p0, Ljpa;->e:I

    if-eq v0, v2, :cond_3

    .line 89
    const/4 v0, 0x4

    iget v1, p0, Ljpa;->e:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 91
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 92
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 96
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 97
    iget v1, p0, Ljpa;->b:I

    if-eq v1, v3, :cond_0

    .line 98
    const/4 v1, 0x1

    iget v2, p0, Ljpa;->b:I

    .line 99
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_0
    iget-object v1, p0, Ljpa;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x2

    iget-object v2, p0, Ljpa;->c:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_1
    iget-object v1, p0, Ljpa;->d:Ljmo;

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x3

    iget-object v2, p0, Ljpa;->d:Ljmo;

    .line 107
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_2
    iget v1, p0, Ljpa;->e:I

    if-eq v1, v3, :cond_3

    .line 110
    const/4 v1, 0x4

    iget v2, p0, Ljpa;->e:I

    .line 111
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_3
    return v0
.end method
