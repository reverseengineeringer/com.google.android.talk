.class final Lhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk;


# static fields
.field public static final a:Lhi;

.field public static final b:Lhi;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lhi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhi;-><init>(Z)V

    sput-object v0, Lhi;->a:Lhi;

    .line 236
    new-instance v0, Lhi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhi;-><init>(Z)V

    sput-object v0, Lhi;->b:Lhi;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Lhi;->c:Z

    .line 233
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 207
    add-int v3, p2, p3

    move v0, v2

    :goto_0
    if-ge p2, v3, :cond_2

    .line 208
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    .line 1028
    invoke-static {v4}, Lhh;->a(I)I

    move-result v4

    .line 208
    packed-switch v4, :pswitch_data_0

    .line 207
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 210
    :pswitch_0
    iget-boolean v0, p0, Lhi;->c:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 228
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 214
    goto :goto_1

    .line 216
    :pswitch_1
    iget-boolean v0, p0, Lhi;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 219
    goto :goto_1

    .line 225
    :cond_2
    if-eqz v0, :cond_3

    .line 226
    iget-boolean v0, p0, Lhi;->c:Z

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_2

    .line 228
    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
