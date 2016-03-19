.class final enum Lkwy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkwy;",
        ">;",
        "Lkog",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lkwy;

.field private static final synthetic b:[Lkwy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lkwy;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lkwy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkwy;->a:Lkwy;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Lkwy;

    const/4 v1, 0x0

    sget-object v2, Lkwy;->a:Lkwy;

    aput-object v2, v0, v1

    sput-object v0, Lkwy;->b:[Lkwy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkwy;
    .locals 1

    .prologue
    .line 207
    const-class v0, Lkwy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkwy;

    return-object v0
.end method

.method public static values()[Lkwy;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lkwy;->b:[Lkwy;

    invoke-virtual {v0}, [Lkwy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkwy;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    return-object v0
.end method
