.class final Lhsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lhsc;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lhsc;

    new-instance v1, Lhsc;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lhsc;-><init>(Liog;B)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 38
    return-void
.end method
