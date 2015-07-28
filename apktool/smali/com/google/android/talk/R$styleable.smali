.class public final Lcom/google/android/talk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CompoundImageView:[I

.field public static final DrawerLayout:[I

.field public static final DrawerLayoutChild:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/talk/R$styleable;->CompoundImageView:[I

    .line 1852
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/talk/R$styleable;->DrawerLayout:[I

    .line 1925
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/talk/R$styleable;->DrawerLayoutChild:[I

    return-void

    .line 1813
    nop

    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
    .end array-data

    .line 1852
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 1925
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1800
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
