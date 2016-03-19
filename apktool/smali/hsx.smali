.class final Lhsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lhsv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lhsv;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lhsv;

    new-instance v1, Lhsv;

    invoke-direct {v1, p2}, Lhsv;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 40
    return-void
.end method
