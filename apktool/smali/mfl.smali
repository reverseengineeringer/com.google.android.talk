.class public final enum Lmfl;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Llwh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmfl;",
        ">;",
        "Llwh;"
    }
.end annotation


# static fields
.field public static final enum a:Lmfl;

.field public static final enum b:Lmfl;

.field public static final enum c:Lmfl;

.field public static final enum d:Lmfl;

.field private static final f:Llwi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwi",
            "<",
            "Lmfl;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lmfl;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    new-instance v0, Lmfl;

    const-string v1, "SPAN_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lmfl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfl;->a:Lmfl;

    .line 349
    new-instance v0, Lmfl;

    const-string v1, "SPAN_LOCAL"

    invoke-direct {v0, v1, v3, v3}, Lmfl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfl;->b:Lmfl;

    .line 353
    new-instance v0, Lmfl;

    const-string v1, "SPAN_CLIENT_HALF"

    invoke-direct {v0, v1, v4, v4}, Lmfl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfl;->c:Lmfl;

    .line 357
    new-instance v0, Lmfl;

    const-string v1, "SPAN_SERVER_HALF"

    invoke-direct {v0, v1, v5, v5}, Lmfl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfl;->d:Lmfl;

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [Lmfl;

    sget-object v1, Lmfl;->a:Lmfl;

    aput-object v1, v0, v2

    sget-object v1, Lmfl;->b:Lmfl;

    aput-object v1, v0, v3

    sget-object v1, Lmfl;->c:Lmfl;

    aput-object v1, v0, v4

    sget-object v1, Lmfl;->d:Lmfl;

    aput-object v1, v0, v5

    sput-object v0, Lmfl;->g:[Lmfl;

    .line 405
    new-instance v0, Llwi;

    invoke-direct {v0}, Llwi;-><init>()V

    sput-object v0, Lmfl;->f:Llwi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 415
    iput p3, p0, Lmfl;->e:I

    .line 416
    return-void
.end method

.method public static a(I)Lmfl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1391
    packed-switch p0, :pswitch_data_0

    .line 1396
    const/4 v0, 0x0

    .line 1395
    :goto_0
    return-object v0

    .line 1392
    :pswitch_0
    sget-object v0, Lmfl;->a:Lmfl;

    goto :goto_0

    .line 1393
    :pswitch_1
    sget-object v0, Lmfl;->b:Lmfl;

    goto :goto_0

    .line 1394
    :pswitch_2
    sget-object v0, Lmfl;->c:Lmfl;

    goto :goto_0

    .line 1395
    :pswitch_3
    sget-object v0, Lmfl;->d:Lmfl;

    goto :goto_0

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lmfl;
    .locals 1

    .prologue
    .line 340
    const-class v0, Lmfl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmfl;

    return-object v0
.end method

.method public static values()[Lmfl;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lmfl;->g:[Lmfl;

    invoke-virtual {v0}, [Lmfl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmfl;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lmfl;->e:I

    return v0
.end method
