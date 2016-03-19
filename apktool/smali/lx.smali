.class final Llx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgu",
        "<",
        "Llw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3278
    new-instance v0, Llw;

    invoke-direct {v0, p1, p2}, Llw;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1275
    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2282
    new-array v0, p1, [Llw;

    .line 1275
    return-object v0
.end method
