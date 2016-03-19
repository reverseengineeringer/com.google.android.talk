.class abstract enum Llxu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llxu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Llxu;

.field public static final enum b:Llxu;

.field public static final enum c:Llxu;

.field private static final synthetic d:[Llxu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Llxv;

    const-string v1, "LOOSE"

    invoke-direct {v0, v1}, Llxv;-><init>(Ljava/lang/String;)V

    sput-object v0, Llxu;->a:Llxu;

    .line 150
    new-instance v0, Llxw;

    const-string v1, "STRICT"

    invoke-direct {v0, v1}, Llxw;-><init>(Ljava/lang/String;)V

    sput-object v0, Llxu;->b:Llxu;

    .line 156
    new-instance v0, Llxx;

    const-string v1, "LAZY"

    invoke-direct {v0, v1}, Llxx;-><init>(Ljava/lang/String;)V

    sput-object v0, Llxu;->c:Llxu;

    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Llxu;

    const/4 v1, 0x0

    sget-object v2, Llxu;->a:Llxu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Llxu;->b:Llxu;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Llxu;->c:Llxu;

    aput-object v2, v0, v1

    sput-object v0, Llxu;->d:[Llxu;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llxu;
    .locals 1

    .prologue
    .line 142
    const-class v0, Llxu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llxu;

    return-object v0
.end method

.method public static values()[Llxu;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Llxu;->d:[Llxu;

    invoke-virtual {v0}, [Llxu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llxu;

    return-object v0
.end method


# virtual methods
.method abstract a(Llvp;)Ljava/lang/Object;
.end method
