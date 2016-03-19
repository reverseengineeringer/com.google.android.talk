.class public enum Llxo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llxo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Llxo;

.field public static final enum b:Llxo;

.field public static final enum c:Llxo;

.field public static final enum d:Llxo;

.field public static final enum e:Llxo;

.field public static final enum f:Llxo;

.field public static final enum g:Llxo;

.field public static final enum h:Llxo;

.field public static final enum i:Llxo;

.field public static final enum j:Llxo;

.field public static final enum k:Llxo;

.field public static final enum l:Llxo;

.field public static final enum m:Llxo;

.field public static final enum n:Llxo;

.field public static final enum o:Llxo;

.field public static final enum p:Llxo;

.field public static final enum q:Llxo;

.field public static final enum r:Llxo;

.field private static final synthetic u:[Llxo;


# instance fields
.field private final s:Llxt;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    new-instance v0, Llxo;

    const-string v1, "DOUBLE"

    sget-object v2, Llxt;->d:Llxt;

    invoke-direct {v0, v1, v4, v2, v5}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->a:Llxo;

    .line 83
    new-instance v0, Llxo;

    const-string v1, "FLOAT"

    sget-object v2, Llxt;->c:Llxt;

    invoke-direct {v0, v1, v5, v2, v6}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->b:Llxo;

    .line 84
    new-instance v0, Llxo;

    const-string v1, "INT64"

    sget-object v2, Llxt;->b:Llxt;

    invoke-direct {v0, v1, v7, v2, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->c:Llxo;

    .line 85
    new-instance v0, Llxo;

    const-string v1, "UINT64"

    sget-object v2, Llxt;->b:Llxt;

    invoke-direct {v0, v1, v8, v2, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->d:Llxo;

    .line 86
    new-instance v0, Llxo;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Llxt;->a:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->e:Llxo;

    .line 87
    new-instance v0, Llxo;

    const-string v1, "FIXED64"

    sget-object v2, Llxt;->b:Llxt;

    invoke-direct {v0, v1, v6, v2, v5}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->f:Llxo;

    .line 88
    new-instance v0, Llxo;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Llxt;->a:Llxt;

    invoke-direct {v0, v1, v2, v3, v6}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->g:Llxo;

    .line 89
    new-instance v0, Llxo;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Llxt;->e:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->h:Llxo;

    .line 90
    new-instance v0, Llxp;

    const-string v1, "STRING"

    sget-object v2, Llxt;->f:Llxt;

    invoke-direct {v0, v1, v2}, Llxp;-><init>(Ljava/lang/String;Llxt;)V

    sput-object v0, Llxo;->i:Llxo;

    .line 93
    new-instance v0, Llxq;

    const-string v1, "GROUP"

    sget-object v2, Llxt;->i:Llxt;

    invoke-direct {v0, v1, v2}, Llxq;-><init>(Ljava/lang/String;Llxt;)V

    sput-object v0, Llxo;->j:Llxo;

    .line 96
    new-instance v0, Llxr;

    const-string v1, "MESSAGE"

    sget-object v2, Llxt;->i:Llxt;

    invoke-direct {v0, v1, v2}, Llxr;-><init>(Ljava/lang/String;Llxt;)V

    sput-object v0, Llxo;->k:Llxo;

    .line 99
    new-instance v0, Llxs;

    const-string v1, "BYTES"

    sget-object v2, Llxt;->g:Llxt;

    invoke-direct {v0, v1, v2}, Llxs;-><init>(Ljava/lang/String;Llxt;)V

    sput-object v0, Llxo;->l:Llxo;

    .line 102
    new-instance v0, Llxo;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Llxt;->a:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->m:Llxo;

    .line 103
    new-instance v0, Llxo;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Llxt;->h:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->n:Llxo;

    .line 104
    new-instance v0, Llxo;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Llxt;->a:Llxt;

    invoke-direct {v0, v1, v2, v3, v6}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->o:Llxo;

    .line 105
    new-instance v0, Llxo;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Llxt;->b:Llxt;

    invoke-direct {v0, v1, v2, v3, v5}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->p:Llxo;

    .line 106
    new-instance v0, Llxo;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Llxt;->a:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->q:Llxo;

    .line 107
    new-instance v0, Llxo;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Llxt;->b:Llxt;

    invoke-direct {v0, v1, v2, v3, v4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    sput-object v0, Llxo;->r:Llxo;

    .line 81
    const/16 v0, 0x12

    new-array v0, v0, [Llxo;

    sget-object v1, Llxo;->a:Llxo;

    aput-object v1, v0, v4

    sget-object v1, Llxo;->b:Llxo;

    aput-object v1, v0, v5

    sget-object v1, Llxo;->c:Llxo;

    aput-object v1, v0, v7

    sget-object v1, Llxo;->d:Llxo;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Llxo;->e:Llxo;

    aput-object v2, v0, v1

    sget-object v1, Llxo;->f:Llxo;

    aput-object v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Llxo;->g:Llxo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Llxo;->h:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Llxo;->i:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Llxo;->j:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Llxo;->k:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Llxo;->l:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Llxo;->m:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Llxo;->n:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Llxo;->o:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Llxo;->p:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Llxo;->q:Llxo;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Llxo;->r:Llxo;

    aput-object v2, v0, v1

    sput-object v0, Llxo;->u:[Llxo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILlxt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llxt;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Llxo;->s:Llxt;

    .line 111
    iput p4, p0, Llxo;->t:I

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILlxt;IB)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Llxo;-><init>(Ljava/lang/String;ILlxt;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llxo;
    .locals 1

    .prologue
    .line 81
    const-class v0, Llxo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llxo;

    return-object v0
.end method

.method public static values()[Llxo;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Llxo;->u:[Llxo;

    invoke-virtual {v0}, [Llxo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llxo;

    return-object v0
.end method


# virtual methods
.method public a()Llxt;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Llxo;->s:Llxt;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Llxo;->t:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
