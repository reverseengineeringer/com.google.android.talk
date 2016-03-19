.class final enum Lkyl;
.super Lkyh;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x3

    .line 1048
    invoke-direct {p0, p1, v0}, Lkyh;-><init>(Ljava/lang/String;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;",
            "Ljava/util/List",
            "<+TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lkyl;->b:Lkyh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkyh;->a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
